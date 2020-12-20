module ApplicationHelper
    def navbar_render
        return (
        "<div class='vertical-nav bg-light' id='sidebar'>
            <ul class='navbar-nav'>
                <li class='nav-item p-1'>
                    <a class='nav-link' href='/recipes'>View Recipes</a>
                </li>
                <li class='nav-item p-1'>
                    <a class='nav-link' href=''>Help</a>
                </li>
                <li class='nav-item p-1'>
                    <a class='nav-link' href=''>About</a>
                </li>
            </ul>
        </div>"
        ).html_safe
    end
end
